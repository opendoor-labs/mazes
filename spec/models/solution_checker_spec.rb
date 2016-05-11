require 'spec_helper'

describe SolutionChecker do
  let(:simple_input) { "WWWWW\nWS EW\nWWWWW\n" }

  describe 'solves?' do
    subject { SolutionChecker.solves?(input, solution) }

    context 'simple input' do
      let(:input) { simple_input }

      context 'correct solution' do
        let(:solution) { 'RR' }

        it 'returns true with no error' do
          solved, error = subject

          expect(solved).to be true
          expect(error).to be nil
        end
      end

      context 'solution that does not finish' do
        let(:solution) { 'R' }

        it 'returns false with an appropriate error' do
          solved, error = subject

          expect(solved).to be false
          expect(error).to eq('Did not finish at an exit')
        end
      end

      context 'solution that makes an illegal move' do
        let(:solution) { 'U' }

        it 'returns false with an appropriate error' do
          solved, error = subject

          expect(solved).to be false
          expect(error).to eq('Illegal move at index 0')
        end
      end

      context 'solution with an invalid move character' do
        let(:solution) { 'X' }

        it 'returns false with an appropriate error' do
          solved, error = subject

          expect(solved).to be false
          expect(error).to eq('Invalid move character at index 0')
        end
      end

      context 'no solution' do
        let(:solution) { nil }

        it 'returns false with an appropriate error' do
          solved, error = subject

          expect(solved).to be false
          expect(error).to eq('No solution provided')
        end
      end
    end
  end

  describe 'MazeState' do
    let(:state) { SolutionChecker::MazeState.new(input) }

    context 'simple input' do
      let(:input) { simple_input }

      describe 'initialize' do
        it 'parses the input correctly' do
          expect(state.instance_variable_get('@input')).to eq([
            ['W', 'W', 'W', 'W', 'W'],
            ['W', ' ', ' ', ' ', 'W'],
            ['W', 'W', 'W', 'W', 'W']
          ])
          expect(state.instance_variable_get('@x')).to eq(1)
          expect(state.instance_variable_get('@y')).to eq(1)
          expect(state.instance_variable_get('@exits')).to eq([[1, 3]])
        end
      end

      describe 'can_move?' do
        it 'returns true if the space is empty' do
          expect(state.can_move?(0, 1)).to eq(true)
        end

        it 'returns true if the space is the start' do
          expect(state.can_move?(0, 0)).to eq(true)
        end

        it 'returns true if the space is an exit location' do
          expect(state.can_move?(0, 2)).to eq(true)
        end

        it 'returns false if the space is a wall' do
          expect(state.can_move?(1, 0)).to eq(false)
        end

        it 'returns false if the space is outside of the input' do
          expect(state.can_move?(2, 0)).to eq(false)
        end
      end

      describe 'move' do
        it 'changes x and y' do
          state.move(1, 1)

          expect(state.instance_variable_get('@x')).to eq(2)
          expect(state.instance_variable_get('@y')).to eq(2)
        end
      end

      describe 'on_exit?' do
        it 'returns false if not on an exit' do
          expect(state.on_exit?).to be false
        end

        it 'returns true if on an exit' do
          state.move(0, 2)

          expect(state.on_exit?).to be true
        end
      end
    end
  end
end

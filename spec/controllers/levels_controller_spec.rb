require 'spec_helper'

describe LevelsController do
  describe 'GET show' do
    let!(:level) { create(:level) }

    subject { get :show, name: level.name, password: level.password }

    it 'returns the levels input and the solve url' do
      subject
      expect(response).to be_ok

      json = JSON.parse(response.body)
      expect(json['input']).to eq(level.input)
      expect(json['solve_url']).to eq(solve_level_url(name: level.name))
    end

    context 'password protected level' do
      before { level.generate_new_password! }

      it 'changes the levels password' do
        expect {
          subject
        }.to change { level.reload.password }
      end
    end
  end

  describe 'PUT solve' do
    let!(:level) { create(:level, message: 'You win!') }
    let!(:next_level) { create(:level, index: level.index + 1) }

    subject { put :solve, name: level.name, password: level.password, solution: 'PLZ?' }

    context 'correct solution' do
      before do
        expect(SolutionChecker).to receive(:solves?).with(level.input, 'PLZ?').and_return([true, nil])
      end

      it 'returns the next levels url' do
        subject
        expect(response).to be_ok

        json = JSON.parse(response.body)
        expect(json['result']).to eq('completed')
        expect(json['next_url']).to eq(level_url(name: next_level.name))
      end

      context 'password protected level' do
        before { level.generate_new_password! }

        it 'changes the levels password' do
          expect {
            subject
          }.to change { level.reload.password }
        end
      end

      context 'no next level' do
        before { next_level.destroy! }

        it 'returns the win message' do
          subject
          expect(response).to be_ok

          json = JSON.parse(response.body)
          expect(json['result']).to eq('completed')
          expect(json['message']).to eq('You win!')
        end
      end
    end

    context 'incorrect solution' do
      before do
        expect(SolutionChecker).to receive(:solves?).with(level.input, 'PLZ?').and_return([false, 'BAD'])
      end

      it 'returns the failure status and the error message' do
        subject
        expect(response).to be_ok

        json = JSON.parse(response.body)
        expect(json['result']).to eq('failed')
        expect(json['message']).to eq('BAD')
      end
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'
require 'three'

RSpec.describe Three do
  describe '.russian_roulette' do
    before do
      allow(described_class).to receive(:kill_the_kitten)
    end

    (1..5).each do |number|
      context "when rand returns #{number}" do
        before do
          allow(described_class)
            .to receive(:rand)
            .with(1..6)
            .and_return(number)
        end

        it 'does not kill the kitten' do
          described_class.russian_roulette
          expect(described_class).not_to have_received(:kill_the_kitten)
        end
      end
    end

    context 'when rand returns 6' do
      before do
        allow(described_class)
          .to receive(:rand)
          .with(1..6)
          .and_return(6)
      end

      it 'kills the kitten' do
        described_class.russian_roulette
        expect(described_class).to have_received(:kill_the_kitten).with(no_args)
      end
    end
  end
end

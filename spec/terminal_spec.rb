require 'spec_helper'

RSpec.describe Terminal do
  describe '#new' do
    context 'when the line index is bigger than the buffer' do
      let(:buffer) { (1..3).to_a }
      let(:tty) { double }

      it "doesn't set current_line_index outside of buffer" do
        terminal = Terminal.new(tty, buffer, 100)

        expect(terminal.current_line_index).to eq 2
      end
    end
  end

  describe '#view' do
    context 'with a buffer that is smaller than the screen' do
      let(:buffer) { (1..3).to_a }
      let(:tty) { double(height: 5) }

      it 'pads with empty lines' do
        terminal = Terminal.new(tty, buffer)

        expect(terminal.view).to eq [1, 2, 3, '']
      end
    end

    context 'with a buffer that is larger than the screen' do
      let(:buffer) { (1..10).to_a }
      let(:tty) { double(height: 5) }

      it 'shows enough elements to fill the screen' do
        terminal = Terminal.new(tty, buffer, 3)

        expect(terminal.view).to eq [4, 5, 6, 7]
      end
    end
  end

  describe '#move_down_line' do
    let(:buffer) { (1..3).to_a }
    let(:tty) { double(height: 5) }

    it 'increments the current line index' do
      initial_terminal = Terminal.new(tty, buffer)

      result = initial_terminal.move_down_line

      expect(result.current_line_index).to eq 1
    end

    describe '#move_up_line' do
      let(:buffer) { (1..3).to_a }
      let(:tty) { double(height: 5) }
      let(:current_line_index) { 2 }

      it 'increments the current line index' do
        initial_terminal = Terminal.new(tty, buffer, current_line_index)

        result = initial_terminal.move_up_line

        expect(result.current_line_index).to eq 1
      end
    end
  end
end

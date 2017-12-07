require 'spec_helper'

describe Bittrex::Helpers do
	include Bittrex::Helpers
	describe '#extract_timestamp' do
		context 'when the argument is empty' do
			it 'returns nil' do
				expect(extract_timestamp(nil)).to be(nil)
			end
		end

		context 'when the argument is an empty string' do
			it 'returns nil' do
				expect(extract_timestamp('')).to be(nil)
			end
		end

		context 'when the argument is a string of spaces' do
			it 'returns nil' do
				expect(extract_timestamp('   ')).to be(nil)
			end
		end

		context 'when the argument is datetime string' do
			it 'returns a datetime object' do
				expected_time_object = DateTime.now
				time_string = expected_time_object.to_s
				strftime_format = '%B %d, %Y %H %M %S'
				expect(extract_timestamp(time_string).class).to eql(DateTime)
				expect(
					extract_timestamp(time_string).strftime(strftime_format)
				).to eql(expected_time_object.strftime(strftime_format))
			end
		end
	end
end

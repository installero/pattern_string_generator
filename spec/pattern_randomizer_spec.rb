require 'pattern_string_generator'

describe PatternRandomizer do
  it 'does nothing to a string with no braces' do
    pattern = PatternRandomizer.new('Some text')

    result = pattern.to_s

    expect(result).to eq 'Some text'
  end

  it 'selects one of two variants' do
    pattern = PatternRandomizer.new('Some (nice|ugly) text')

    result = pattern.to_s

    expect(['Some nice text', 'Some ugly text']).to include(result)
  end

  it 'accepts nested patterns' do
    pattern = PatternRandomizer.new(
      '(Some (nice|ugly) text|Never mind)'
    )

    result = pattern.to_s

    expect(
      ['Some nice text', 'Some ugly text', 'Never mind']
    ).to include(result)
  end
end

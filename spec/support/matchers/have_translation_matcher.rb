RSpec::Matchers.define :have_translation do |text|
  match do |page|
    expect(page).to have_content(t(text))
  end

  failure_message do |page|
    "expected to have translation #{text}"
  end

  failure_message_when_negated do |page|
    "not expected to have translation #{text}"
  end

  description do
    "expects to have a translation"
  end
end

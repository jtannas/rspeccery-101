# RSpeccery 101: How We Use RSPec

## Getting Started

1) Make sure Ruby is installed (preferably 2.6.0)
2) `$ bundle install`

## Glossary

### Programming Terminology
Arguments: Inputs that are explicitly passed to a function (e.g. `def add_one(argument)`)
State: Inputs that is implicitly passed to a function via the state of what's around it (e.g. `app.is_running?()` depends not on arguments but on state)
Return Value: Output from a function that is explicitly returned (e.g. `add_one(1) # 2`)
Side Effect: A change to the state of what's around a method tht aren't an explicit return value (e.g. `app.start()` affects the state)

### Generic Testing Terminology
Test: Refers to an automated code test
Spec: Short for specification; Another way of referring to tests, but mostly used in reference to RSpec tests.
Unit Test: A test that meant to test a very small unit of code in isolation, ideally a single function or method. I stick the upper limit at testing a whole class.
Integration Test: A test that tests a broader set of code, such as an entire class or service.
System Test: A test that test multiple systems to verify the expected behvaiour (e.g. interacting with a browser interface and making sure the correct effects happen)

### RSpec Terminology
`described_class`: If your top level `RSpec.describe` uses your class as the description, you can refer to it using the `described_class` variable. This helps with reusing tests.
`let(<variable>) { <block> }`: Lazy inits `<variable>` using the code in `<block>`. Can be declared in a broad scope and overriden in narrower scopes.
`let!(<variable>) { <block> }` : The same as a regular `let`, except that it eagerly inits the `<variable>`. Prefer `let` over `let!` if you don't need to eager init.
`it <dptional description>, <block>`: Defines a single test that is expected to pass. Fails the test suite if it does not pass.
`pending <dptional description>, <block>`: Defines a single test is expected to fail because of some condition (e.g. the tested code does not exist yet). Fails the test suite if it passes as an indicator that the test should be marked with `it`. Does not fail the test suite if it fails as expected, but marks it yellow (i.e. incomplete),
`skip`: Indicates a test that should be skipped (aka not run at all).
`xit`: an alternative way of writing pending.
`subject`: The subject of a test can be defined using `subject(<optional explicit subject name>) { subject definition block}`. It can then be referred to using `it { is_expected.to <expectation> }` for compact tests.
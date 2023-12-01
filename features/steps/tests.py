from behave import given, then, when

from main import incrementor


@given('a stride of {stride:d} is set')
def set_stride(context, stride):
    context.incrementor = incrementor(stride)

@when('the incrementor function is applied to {number:d}')
def apply_incrementor(context, number):
    context.result = context.incrementor(number)  

@then('the result should be {expected_result:d}')
def test_result(context, expected_result):
    assert context.result == expected_result, "Expected result is {0}, but got {1}".format(expected_result, context.result)

# Existing incrementor code from main.py is assumed to be imported here
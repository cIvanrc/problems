require 'student'
require 'course'

describe "Mocks" do
  it '--' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:bar)

    # exercise
    student.bar
  end

  it 'mocks with args' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:foo).with(123)

    # exercise
    student.foo(123)
  end

  it 'repeat' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:foo).with(123).twice

    # exercise
    student.foo(123)
    student.foo(123)
  end

  it 'return' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:foo).with(123).and_return(true)

    # exercise
    puts student.foo(123)
  end
end

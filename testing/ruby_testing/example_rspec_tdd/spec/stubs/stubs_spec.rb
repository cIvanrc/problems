require 'student'
require 'course'

describe "Stub" do
  it '--' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(course).and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end
  
  it 'dinamic arguments' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        "hello!!"
      elsif arg == :hi
        "hi!!"
      end
    end 

    expect(student.foo(:hello)).to eq("hello!!")
    expect(student.foo(:hi)).to eq("hi!!")
  end

  it 'any instance of class' do
    student = Student.new
    another_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(another_student.bar).to be_truthy
  end

  it 'errors' do
    student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_raise(RuntimeError)

    expect{ student.bar }.to raise_error(RuntimeError)
  end
end

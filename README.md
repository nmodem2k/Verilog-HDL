# Verilog-HDL
This Repository contains Programs on Verilog HDL
# Resources to learn Verilog-HDL
- [Verilog  Tutorial](https://drive.google.com/file/d/19YkWoDOZWMmaEZ5kae7yToDb8fU-crVk/view?usp=sharing)
- [EE 5703 | Nitin Chandrachoodan](http://www.ee.iitm.ac.in/~nitin/teaching/ee5703/)
- [M. Morris Mano, Michael D. Ciletti - Digital Desig…uction to the Verilog HDL-Prentice Hall (2012)](https://drive.google.com/file/d/14uYl3n4KSqp9CWdUZGcpRHjzRpW3g4Mb/view?usp=sharing)

# An Introduction to Verilog-HDL
Verilog is a HARDWARE DESCRIPTION LANGUAGE (HDL). It is a language used for describing a digital system like a network switch or a microprocessor or a memory or a flip−flop. It means, by using a HDL we can describe any digital hardware at any level. Designs, which are described in HDL are independent of technology, very easy for designing and debugging, and are normally more useful than schematics, particularly for large circuits.

# Why HDL?

We design hardware to solve specific problems. Typically we first describe those problems in plain
language (such as English), and then refine it to a mathematically accurate statement using
languages such as C, Python or Matlab. These are _high level_ languages - they provide high level
abstractions of data types and commands that make it easy to model the problem. However, they
do not translate well into hardware descriptions. This is primarily because:


- They do not have a notion of time or a sequence of events happening one after another
- They do not model concurrency or multiple events happening at the same time
- They typically assume that operations such as fetching data from somewhere and
manipulating it are elementary operations and the complexity is hidden away behind simple
instructions. However, hardware requires each of these operations to be made explicit.

So hardware description languages (HDLs) are used to bring in these aspects and to model them.
The purpose is explicitly **modeling** , and there is no guarantee that something written in HDL
actually corresponds to hardware. In other words, **it is entirely possible to write a bad
description in an HDL that has no physical meaning**. HDLs are used primarily for **simulation**.
This means that we simulate the HDL (like running a program) to see whether it gives the correct
(intended) output. If not, then we need to modify the HDL. But if it does give the correct output on
simulation, there is still no guarantee that the resulting hardware will work properly.

We will concentrate on the HDL called **Verilog** in this course. The other prominent HDL is **VHDL** ,
which has similar constructs but different syntax. There are a few other HDLs that are often used in
different contexts, but we will not cover any others here.

# Basic data types

Similar to C and other languages, there are some basic data types that are used in HDLs. In
verilog, the main ideas to note are:

## Four-valued logic system

Verilog models signals as 4-valued entities. That is, a signal could either take on the normal
Boolean values 0 and 1 , or could be _unknown_ (x) or _tri-stated_ (z). The tri-state mode is not
very common - it is used to indicate a state where either a signal can be both input and output, or
where a signal has multiple drivers. The x state is more common - any signal that has not been
explicitly assigned a value at the start of a simulation has a value of x, and in particular, all
registers need to be explicitly initialized for proper functioning of the circuit.

## Number formats

Numbers in verilog can be represented in many ways:


- Normal decimal - by default numbers are assumed to be in decimal. To be explicit about it, the
notation 'd23 can be used to indicate that the number is 23 decimal.
- Binary: a number represented for example as 'b10101 is a binary number.
- Hexadecimal: a number represented as 'habcd is hexadecimal.

Negative numbers are represented in decimal using the normal - sign. For other representations,
typically the designer needs to keep track of whether two's complement or some such
representation is being used.


## Nets (wires)

The most basic variable declaration is a **wire**. Any variable declared as a wire is simply a place-
holder that holds a value that is used wherever the wire is connected. For example:

```
wire a ;
```
is a single-bit wire that holds a value, and can be used as a variable in your code.

```
wire [ 3 : 0 ] b ;
```
declares a 4-bit value as a variable. This can take on any 4-bit binary value from 0000 to 1111. It
can be used anywhere that a 4-bit value is required.

**IMPORTANT** : A common bug occurs because if you don't declare a variable, Verilog automatically
infers a 1-bit wire. This means that if you make a spelling mistake in the name of a variable, Verilog
will **not** report an error - it will proceed as though the new name is a 1-bit wire that was not
declared.

## Registers

A register in normal digital logic design is used to indicate something that changes based on the
edge of a clock signal. However, Verilog registers are not the same as registers in digital design. In
Verilog, a signal has to be declared as a register if it needs to be assigned a value inside
an always statement - this will become clear later in the example.

For now, remember that declaring something as reg does not make it a physical register.

## Parameters and Integers

Very often, we need to specify values that are used in multiple places. An example is to specify the
number of bits used for representing numbers in an adder. If we want to change from an 8-bit
adder to a 16-bit adder, it would be nicer if we could just make a single change rather than
many. _Parameters_ can be used for this purpose. For example:

```
parameter WIDTH = 8 ;
```
declares a constant of value 8 that can be used anywhere in the code.

Integer variables can also be declared, and used in for loops and other conditionals. However,
they do not mean the same as in a C/C++ program, so avoid using them until you are more familiar
with how the language works.

# Types of modeling

# Example

We want to model a multiplexer. This has 3 inputs: a and b are 4-bit values, and s is a single
bit _select_ signal. The top-level module declaration for this module will look as follows:

```
module mux(a , b , s , y) ;
input a , b ; // Two 1-bit inputs
input s ; // Single bit 'select'
```

```
output y ; // 1-bit output
```
```
endmodule
```
The remaining content of this module is filled in based on the style of modeling we use. In
particular, there are 3 main styles as described below. The main idea behind a MUX is that the
output is defined as: _if (select is true) then output = a, else output = b_. The three examples below
show different ways to model this behaviour.

# Structural

The following logic equation implements the expression above:

```
y = or ( and (s , a) , and ( ~ s , b))
```
where or(x,y) represents the OR operation on the two inputs x and y etc. That is, the logic
gates used to implement the design are explicitly specified by the designer. In verilog syntax, this
will be:

```
wire t1 , t2 , t3 ;
not (t3 , s) ;
and (t1 , a , s) ;
and (t2 , b , t3) ;
or (y , t1 , t2) ;
```
This style of modeling is used in two situations:

```
we know the exact gates to be used (not very common)
we have already built up other modules, and are only connecting them together to get the
correct behaviour. This is fairly commonly seen in all HDL designs.
```
# Dataflow

In this form of modeling, we write the equations corresponding to the code: the assumption is that
the inputs or signals on the right-hand-side of the equations are continuously varying, and any time
they vary the left-hand-side gets updated with the correct values. For example:

```
assign y = ( ~ s & a) | (s & b) ;
```
where &, | and ~ are the appropriate Boolean functions. Any time there is a change in a, b,
or s, the value of y is updated.

This is very useful for simple equations.

Full code available here.

# Behavioural

This is the most generic form of description. It uses the concept of a block of code that has
a _sensitivity_ list - signals that can trigger an update of the code. Any time there is a change in the
sensitivity list, the entire block has to be evaluated in sequential order, and the outputs updated.
This allows very complex descriptions to be written almost like a regular C program. However, if not

## Full code available here.


written carefully, it can easily result in hardware descriptions that do not make physical sense. An
example for the MUX is:

```
output reg y ;
always @ (a or b or s)
begin
if (s)
y = a ;
else
y = b ;
end
```
Full code available here

# Simulation and test benches

As mentioned earlier, the main purpose of Verilog is to _model_ the behaviour of a piece of hardware.
So how is this verified? We _simulate_ the model to see if it behaves as expected under a set of
known inputs. For example, for a MUX, we need to test different values of swhile changing the
values of a and b. There are very few test cases here, but in general the number of tests could
be very large, and not all cases can be checked. So a test bench needs to be designed carefully so
that _enough_ tests are carried out to get a high degree of confidence that the description is correct,
while at the same time not making the code too long or time consuming.

An example of a test bench for the multiplexers described above is here. Note the following:


- The test bench has no inputs or outputs.
- There is one structural unit (my_mux) that is instantiated with the name dut. This stands
for device under test , and is a common convention used in test benches.
- There is an initial block in the code, where variables are set to different values, some time
is allowed to pass, the values are changed etc.. In more complex test benches, a clock can be
used to apply different test inputs at different times, but the core idea remains the same.
- There is a monitor (or in some cases display) statement that tracks changes in values
and prints as soon as something changes. This is a good way to check for changes, but works
only for small designs.

# Self-checking test bench

A test bench does not have any specific requirements: it is up to the designer to decide what they
want to test. However, it is a good practice to use so called _self-checking_ test benches. In this
case, the bench will apply certain inputs, compare the output against an expected output, and print
an error if something is wrong. This makes it easy to automate the process of checking large
designs when some change is made.

Constructing a self-checking test bench is more complex, but some patterns can be followed.





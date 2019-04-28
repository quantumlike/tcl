### Examples and explanations for Regular expressions --- tcl & python

#### tcl 

Examples:

```tcl
set z "abcdefghigklmnopqrstuvwxyz1234567890~@#$%^&*";
regexp {.*(2).*(8).*(\^).*} $z a b c d e;
set y "$b$d$c";
```

the command window output is:
```
% set z "abcdefghigklmnopqrstuvwxyz1234567890~@#$%^&*";
abcdefghigklmnopqrstuvwxyz1234567890~@#$%^&*
```
```
%regexp {.*(2).*(8).*(\^).*} $z a b c d e
1
% puts $a
abcdefghigklmnopqrstuvwxyz1234567890~@#$%^&*
% puts $b
2
% puts $c
8
% puts $d
^
% puts $e

% set y "$b$d$c";
2^8
```
```
% regexp {(.*)(2)(.*)(8)(.*)(\^)(.*)} $z a b c d e f g h i
1
% puts $a
abcdefghigklmnopqrstuvwxyz1234567890~@#$%^&*
% puts $b
abcdefghigklmnopqrstuvwxyz1
% puts $c
2
% puts $d
34567
% puts $e
8
% puts $f
90~@#$%
% puts $g
^
% puts $h
&*
% puts $i
   
% set y "$c$g$e"
2^8
```

```
% regexp {.*(.2).*(.8).*(.\^).*} $z a b c d e
1
% puts $b
12
% puts $c
78
% puts $d
%^
% puts $e

```

Explanations:
```tcl
regexp {.*(.2).*(.8).*(.\^).*} $z a b c d e
```
The above command is a regular expression, ".*(.2).*(.8).*(.\^).*".The regular expression patten mapping means to find a mapping between the string and the 'whole' expression {.*(.2).*(.8).*(.\^).*}. So each patten should have some mapped value, and according to the patten, the mapping is unique.   \
There are three pattens have return value: ".2", ".8", ".^". The quoted patten has return value.    \
The return value of the command regexp is 1, if all the pattens are found. Otherwise the return is 0.   \
The target is to get the number 2 and the charactor before it, get the number 8 and the charactor before it, and get the charactor ^ and the charactor before it.   \
The a b c d e are five variables which store the output of the command "regexp".    \
a has all the results of the command, i.e. the whole string.    \
b is the return value of the first founded patten for (.2) before ".*", it is the founded value before ".*", i.e. 12.   \
c for (.8) before ".*", i.e. 78.   \
d for (.\^), i.e. %^.   \
e has no patten to store. So it is empty.   

```tcl
% regexp {(.*)(.2)(.*)(.8)(.*)(.\^)(.*)} $z a b c d e f g h i
1
% puts $a
abcdefghigklmnopqrstuvwxyz1234567890~@#$%^&*
% puts $b
abcdefghigklmnopqrstuvwxyz
% puts $c
12
% puts $d
3456
% puts $e
78
% puts $f
90~@#$
% puts $g
%^
% puts $h
&*
% puts $i

```
The above command is a regular expression, "(.*)(.2)(.*)(.8)(.*)(.\^)(.*)". There are seven pattens have return value. Each pair of quotes is a patten which has return value.    \
The return value of the command regexp is 1, if all the pattens are found. Otherwise the return is 0.   \
The target is to get the number 2 and the charactor before it, get the number 8 and the charactor before it, and get the charactor ^ and the charactor before it.   \
The a b c d e are five variables which store the output of the command "regexp".    \
a has all the results of the command, i.e. the whole string.    \
b is the return value of the first founded patten for (.*), it is the founded value, i.e. "abcdefghigklmnopqrstuvwxyz".   \
c for (.2), i.e. 12.   \
d for (.*) before (.8), i.e. 3456.   \
So on and so forth.   

#### python

2019.4.28:
Python methods:
```python
import re
p = re.compile('.*(2).*(8).*(\^).*')
m = p.match('abcd1234567890@#$%^&')
m.groups()
m.group()
m.group(0)
m.group(1)
m.group(2)
m.group(3)
m.group(4)
```
the command window output is:
```python
Python 3.5.3 (v3.5.3:1880cb95a742, Jan 16 2017, 15:51:26) [MSC v.1900 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> import re
>>> p = re.compile('.*(2).*(8).*(\^).*')
>>> m=p.match('abcd1234567890@#$%^&')
>>> m.group()
'abcd1234567890@#$%^&'
>>> m.group(1)
'2'
>>> m.group(2)
'8'
>>> m.group(3)
'^'
>>> m.group(4)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: no such group
>>> m.groups()
('2', '8', '^')
>>>
>>> m.group(1)+m.group(3)+m.group(2)
'2^8'
>>> y = m.group(1)+m.group(3)+m.group(2)
>>> y
'2^8'
```
   

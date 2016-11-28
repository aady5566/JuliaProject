typeof('x')

typeof("adiflh")

str = "Hello, world.\n yoyoyo"


println(str)

str[end-1]
str[end%2]
str[1:3]

str="hello"
endof(str)
for i = 1:endof(str)
   try
       println(str[i])
   catch
       # ignore the index error
       println("error")
   end
end

str="newhello"
for c in str
     println(c)
 end

s1 = "hi"
s2 = ", andy"
#str = string(s1,s2)
str = "$s1$s2"

"1 + 2 = $(1 + 2)"

m = [1,2,3]
"m: $m"

#Triple-Quoted String Literals
longStr="""
ads
asdsf
"""

endof(longStr)

longStr[end]

#search
search("xylophone", 'x')
# given offset by providing a third argument
search("xylophone", 'o', 5)

search("你好麻",'好')
chinese="你好嗎"
chinese[search(chinese,"好")]


repeat(".:Z:.", 10)

join(["apples", "bananas", "pineapples"], "。")

#contains() function to check if a substring is contained in a string:
contains("Xylophon", "a")
contains("Xylophon", "o")
#not workd cuz arguments need string
contains("Xylophon", 'o')


#Regular Expressions
r"^\s*(?:#|$)"

ismatch(r"^\s*(?:#|$)", "# a comment")

println(match(r"^\s*(?:#|$)", "# a comment"))


m = match(r"^\s*(?:#\s*(.*?)\s*$|$)", "# a comment ")
m.match
m.captures
m.offset



m = match(r"(a|b)(c)?(d)", "ad")

# you have the option to specify an index at which to start the search.
m = match(r"[0-9]","aaaa1aaaa2aaaa3",11)
m

m = match(r"(a|b)(c)?(d)", "ad")
#直接assign給個別變數
first, second, third = m.captures; first

m=match(r"(?<hour>\d+):(?<minute>\d+)","12:45")
m[:minute]

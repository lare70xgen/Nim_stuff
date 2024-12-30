# This example get content on defined web page and print it to console.
# Compile code nim -c code.nim
import std/[strtabs, cgi]
import std/httpclient
var client = newHttpClient()
try:
 echo client.getContent("http://google.com")
finally:
 client.close()

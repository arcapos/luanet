A Network access module for Lua

Copyright (C) 2014 - 2016 by Micro Systems Marc Balmer.
All rights reserved.


# Implementing Network Servers and Clients

## The net module

The net module is used to implement network servers or clients.
It supports IPv4, IPV6, and local sockets.

## Creating network servers

### bind(hostname [, port] [, backlog])

Bind  a socket on the specified hostname and port. This also
does the listen system call. If the hostname argument starts
with a slash or dot character, a local socket (AF_UNIX) is assumed,
an IP socket otherwise.

### sock:accept()

Accept a new connection and return a new socket for the new
connection.

### sock:close()
Close a socket.

## Creating network clients

### connect(hostname, port)

Connect to hostname at the specified port and return a new
socket.

## Transferring data

### sock:write(data)

Write data to the socket.

### sock:print(string)

Write string to the socket and append a newline character.

### sock:read(size [, timeout])

Read size bytes from a socket with an optional timeout in
milliseconds. Returns the data read or nil if the timeout
expires or an error occured.

### sock:readln([timeout])

Read data up to the first newline character from a socket with
an optional timeout in milliseconds. Returns the data read or
nil if the timeout expires or an error occured.

## Filedescriptor passing

Open filedescriptors can be passed only over AF\_UNIX sockets.

### sock:sendfd(fd)

Send a filedescriptor.

### sock:recvfd(fd)

Receive a filedescriptor.

## Miscellaneous functions

### sock:socket()

Return as an integer the underlying socket.

### sock:close()

Close a socket.

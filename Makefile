# Clarkson University
# CS 444/544: Operating Systems, Spring 2024
# Project: Prototyping a Web Server/Browser
# Created by Daqing Hou, dhou@clarkson.edu
#            Xinchao Song, xisong@clarkson.edu
# March 30, 2024
# Copyright © 2022-2024 CS 444/544 Instructor Team. All rights reserved.
# Unauthorized use is strictly prohibited.

all: server browser

server: server.cpp net_util.hpp net_util.cpp
	g++ -std=c++11 server.cpp net_util.cpp -o server -pthread

browser: browser.cpp net_util.hpp net_util.cpp
	g++ -std=c++11 browser.cpp net_util.cpp -o browser -pthread

clean:
	rm -f *.o server browser

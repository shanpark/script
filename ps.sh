#!/bin/bash

ps -ef | grep -v grep | grep -e discovery.jar -e gateway.jar -e auth.jar -e front.jar -e user.jar -e asset.jar -e project.jar -e report.jar -e wiki.jar
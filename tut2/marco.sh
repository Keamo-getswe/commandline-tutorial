#!/bin/env bash

marco () {
	pwd > /tmp/marco
}

polo () {
	cd $(cat /tmp/marco)
}

shipwreck () {
	rm /tmp/marco
}

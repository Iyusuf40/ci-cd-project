#!/bin/bash
rm SCR* URL*
git add SCR* URL*
git commit -m "removed old screenshots"
cp /vagrant/p3/* .

#!/usr/bin/env python3

import sys

from mountainlab_pytools import processormanager as pm

import p_compare_ground_truth

PM=pm.ProcessorManager()

PM.registerProcessor(p_compare_ground_truth.compare_ground_truth)

if not PM.run(sys.argv):
    exit(-1)

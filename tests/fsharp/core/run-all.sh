#!/usr/bin/env sh
echo "Running unoptimized..." && \
fsharpc --define:Portable --define:MONO --define:UNIX --define:TESTS_AS_APP --quotations-debug+ --optimize- --debug+ ./run-all.fsx -o run-all-unopt.exe && \
mono ./run-all-unopt.exe && \
echo "Running optimized..." && \
fsharpc --define:Portable --define:MONO --define:UNIX --define:TESTS_AS_APP --quotations-debug+ --optimize+ --debug+ ./run-all.fsx -o run-all-opt.exe && \
mono ./run-all-opt.exe


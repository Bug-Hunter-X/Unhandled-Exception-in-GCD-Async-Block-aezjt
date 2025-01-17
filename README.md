# Unhandled Exception in GCD Async Block

This repository demonstrates a common but easily overlooked issue in Objective-C: unhandled exceptions within Grand Central Dispatch (GCD) asynchronous blocks.  The `bug.m` file contains code that throws an exception within a GCD block, which is then not caught, resulting in silent failure or unexpected crashes. The `bugSolution.m` file provides a robust solution to this problem.

## Problem

When an exception is thrown inside a GCD asynchronous block without proper exception handling within that block's scope, the exception might not propagate to the main thread or be properly logged. This can lead to silent failures or unexpected app behavior. 

## Solution

The solution involves using a `@try...@catch` block within the GCD block to handle potential exceptions locally. This allows for graceful error handling and prevents the silent failure.  Furthermore, logging the error provides valuable debugging information.

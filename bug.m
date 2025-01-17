This code snippet demonstrates a potential issue related to Objective-C's exception handling and how it interacts with asynchronous operations.  Specifically, the problem arises when an exception is thrown within a block scheduled on a Grand Central Dispatch (GCD) queue, and the exception is not properly caught or handled within the scope of that block.

```objectivec
- (void)someMethod {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{ 
        // Simulate an error condition
        [self performSelector:@selector(methodThatThrowsException)];
    });
}

- (void)methodThatThrowsException {
    @throw [NSException exceptionWithName:@
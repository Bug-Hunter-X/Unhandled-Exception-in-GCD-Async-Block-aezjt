```objectivec
- (void)someMethod {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{ 
        @try {
            // Simulate an error condition
            [self performSelector:@selector(methodThatThrowsException)];
        } @catch (NSException *exception) {
            NSLog(@
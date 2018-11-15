# WAStickersThirdParty-For-Objective-C



### First, Google "How to use Swift Classes in Objective-C"

- Step 1, Add Swift File to Objective-C Project
- Step 2, Bridging Header "**xxxxx-Bridging-Header.h**"
- Step 3, Set "**Build Setting**" Config -> TARGETS 'Project'
  - Add **WebP.framework**
  - Find *Objective-C Bridging Header* Set "**xxxxx/<ProductModuleName>-Bridging-Header.h**"
  - Find *Objective-C Generated Interface Header Name* Set "**ProductModuleName-Swift.h**"
  - Find *Defines Module* Set "**YES**"


------------------


### Sample Swift Code:
```
@objc class SwiftClass : NSObject{
    @objc func sayHello () -> void {
        println ("Swift says hi!")
    }
}
```
### Step 1:

In your .m file where you want to use Swift Class, make sure you import the Swift Header: 
```
#import "<ProductModuleName>-Swift.h"
```

### Step 2, Call Swift Class use 'TestingSwift.swift' in Objective-C method like so:
```
SwiftClass *mySwiftClass = [[SwiftClass alloc] init];  // new Class
[mySwiftClass sayHello]; Call Swift Function
```

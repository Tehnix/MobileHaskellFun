# Mobile Haskell (iOS)

Toy project for testing out Haskell on iOS. For more information on how this works and what the different parts are, please check out my post on [Mobile Haskell (iOS) at my blog](https://codetalk.io/posts/2018-02-07-Mobile-Haskell.html).

While you should probably read the blog post, for the impatient and brave, simply,

1. clone down the MobileHaskellFun repository,
2. run `./setup-tools.sh` to set up the tools,
3. cd into `hs-src/`
4. build the package index `./call x86_64-apple-ios-cabal new-update --allow-newer`,
5. run `./call make iOS` to compile the program for iOS,
6. and finally launch Xcode and start the simulator.

You should get a screen like below,

<p align="center">
  <img width="305" height="539" alt="Running the program in the iOS simulator" title="Running the program in the iOS simulator" src="https://user-images.githubusercontent.com/1189998/35937522-bc67f90a-0c46-11e8-80e8-e7c852a3b85f.png">
</p>

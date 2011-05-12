//
//  Tree.m
//  KeePass2
//
//  Created by Qiang Yu on 2/11/10.
//  Copyright 2010 Qiang Yu. All rights reserved.
//

#import "Tree.h"

@interface Tree(PrivateMethods)
-(void)printTree:(Node *)node Indent:(int)indent;
@end


@implementation Tree
@synthesize _root;

-(void)dealloc{
	[_root breakCyclcReference];
	[_root release];
	[super dealloc];
}

-(void)print{
	if(_root){
		[self printTree:_root Indent:0];
	}
}

-(void)printTree:(Node *)node Indent:(int)indent{
}

@end

#import <GTKKit/GTKExpander.h>

@interface GTKExpander (Properties)

@property (assign) OFString *label;
@property (assign) bool expanded;
@property (assign) int spacing;
@property (assign) bool resizeToplevel;

+ (id)expanderWithLabel:(OFString *)label;

@end
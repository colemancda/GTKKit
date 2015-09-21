#import "GTKExpander.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKExpander (Properties)
@property (copy) OFString *label;
@property (assign) bool expanded;
@property (assign) int spacing;
@property (assign) bool resizeToplevel;

+ (instancetype)expanderWithLabel: (OFString*)label;
@end

OF_ASSUME_NONNULL_END

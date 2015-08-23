#import "GTKExpander.h"

@implementation GTKExpander

- (id)createWidget {
  self.widget = gtk_expander_new ("");
  return self;
}

- (id)init {
  self = [super init];
  return self;
}

@end

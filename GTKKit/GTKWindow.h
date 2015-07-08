#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>

@interface GTKWindow : GTKBin

@property (assign) of_dimension_t defaultSize;
@property (assign) of_dimension_t size;

@end

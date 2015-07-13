#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKBin.h>
#import <GTKKit/Protocols/GTKWindowDelegate.h>

@interface GTKWindow : GTKBin

@property (assign) of_dimension_t defaultSize;
@property (assign) of_dimension_t size;
@property (nullable, unsafe_unretained) id <GTKWindowDelegate> delegate;

@end

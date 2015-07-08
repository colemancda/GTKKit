#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>

@interface GTKButton (Properties)

@property (assign) OFString *label;
@property (assign) GtkReliefStyle reliefStyle;

@end

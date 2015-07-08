#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>

@interface GTKButton (Properties)

@property (assign) OFString *label;

- (id)reliefStyle:(GtkReliefStyle)relief;

- (GtkReliefStyle)reliefStyle;

@end

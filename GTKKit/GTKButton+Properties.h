#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>

@interface GTKButton (Properties)

- (id)label:(OFString *)label;

- (OFString *)label;

- (id)reliefStyle:(GtkReliefStyle)relief;

- (GtkReliefStyle)reliefStyle;

@end

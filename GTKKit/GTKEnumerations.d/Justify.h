#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface Justify : OFObject

+ (GtkJustification)left;

+ (GtkJustification)right;

+ (GtkJustification)center;

+ (GtkJustification)fill;

@end

#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface PositionType : OFObject

+ (GtkPositionType)left;

+ (GtkPositionType)right;

+ (GtkPositionType)top;

+ (GtkPositionType)bottom;

@end

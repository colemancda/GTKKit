#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface DirectionType : OFObject

+ (GtkDirectionType)tabForward;

+ (GtkDirectionType)tabBackward;

+ (GtkDirectionType)up;

+ (GtkDirectionType)down;

+ (GtkDirectionType)left;

+ (GtkDirectionType)right;

@end

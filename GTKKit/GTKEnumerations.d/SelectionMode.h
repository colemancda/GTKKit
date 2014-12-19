#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface SelectionMode : OFObject

+ (GtkSelectionMode)none;

+ (GtkSelectionMode)single;

+ (GtkSelectionMode)browse;

+ (GtkSelectionMode)multiple;

@end

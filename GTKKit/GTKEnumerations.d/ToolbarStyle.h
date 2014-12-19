#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface ToolbarStyle : OFObject

+ (GtkToolbarStyle)icons;

+ (GtkToolbarStyle)text;

+ (GtkToolbarStyle)both;

+ (GtkToolbarStyle)bothHorizontal;

@end

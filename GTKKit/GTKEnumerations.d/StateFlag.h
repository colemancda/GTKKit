#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface StateFlag : OFObject

+ (GtkStateFlags)normal;

+ (GtkStateFlags)active;

+ (GtkStateFlags)prelight;

+ (GtkStateFlags)selected;

+ (GtkStateFlags)insensitive;

+ (GtkStateFlags)inconsistent;

+ (GtkStateFlags)focused;

+ (GtkStateFlags)backdrop;

+ (GtkStateFlags)leftToRight;

+ (GtkStateFlags)rightToLeft;

+ (GtkStateFlags)link;

+ (GtkStateFlags)visited;

//+ (GtkStateFlags)checked;

@end

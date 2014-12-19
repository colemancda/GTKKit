#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface ScrollType : OFObject

+ (GtkScrollType)none;

+ (GtkScrollType)jump;

+ (GtkScrollType)stepBackward;

+ (GtkScrollType)stepForward;

+ (GtkScrollType)pageBackward;

+ (GtkScrollType)pageForward;

+ (GtkScrollType)stepUp;

+ (GtkScrollType)stepDown;

+ (GtkScrollType)pageUp;

+ (GtkScrollType)pageDown;

+ (GtkScrollType)stepLeft;

+ (GtkScrollType)stepRight;

+ (GtkScrollType)pageLeft;

+ (GtkScrollType)pageRight;

+ (GtkScrollType)start;

+ (GtkScrollType)end;

@end

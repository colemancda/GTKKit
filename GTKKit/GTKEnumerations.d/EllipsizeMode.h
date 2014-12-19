#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface EllipsizeMode : OFObject

+ (PangoEllipsizeMode)none;

+ (PangoEllipsizeMode)start;

+ (PangoEllipsizeMode)middle;

+ (PangoEllipsizeMode)end;

@end

#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface BaselinePosition : OFObject

+ (GtkBaselinePosition)top;

+ (GtkBaselinePosition)center;

+ (GtkBaselinePosition)bottom;

@end

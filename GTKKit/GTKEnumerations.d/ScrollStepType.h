#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface ScrollStepType : OFObject

+ (GtkScrollStep)steps;

+ (GtkScrollStep)pages;

+ (GtkScrollStep)ends;

+ (GtkScrollStep)horizontalSteps;

+ (GtkScrollStep)horizontalPages;

+ (GtkScrollStep)horizontalEnds;

@end

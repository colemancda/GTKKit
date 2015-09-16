#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKWidget.h"

@interface GTKEntry : GTKWidget {
  
}

@property (assign) GtkEntryBuffer *buffer;
@property (assign) id stringValue;
@property (assign) bool textVisible;
@property (assign) int maximumLength;
@property (assign) bool hasFrame;

@end

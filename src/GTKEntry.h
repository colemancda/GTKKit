#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKWidget.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKEntry: GTKWidget
@property (assign) GtkEntryBuffer *buffer;
@property (copy) id stringValue;
@property (assign) bool textVisible;
@property (assign) int maximumLength;
@property (assign) bool hasFrame;
@end

OF_ASSUME_NONNULL_END

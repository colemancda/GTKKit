#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWidget.h>

@interface GTKEntry : GTKWidget {
  GtkEntryBuffer *buffer;
}

@property (assign) id stringValue;
@property (assign) BOOL textVisible;
@property (assign) int maximumLength;

// - (id)maximumLength:(int)max;

// - (int)maximumLength;

- (BOOL)hasFrame;

- (id)hasFrame:(BOOL)setting;

@end

#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKWidget.h>

@interface GTKEntry : GTKWidget {
  GtkEntryBuffer *buffer;
}

@property (assign) id stringValue;

// - (id)stringValue;

- (id)textVisible:(BOOL)visible;

- (BOOL)textVisible;

- (id)maximumLength:(int)max;

- (int)maximumLength;

- (BOOL)hasFrame;

- (id)hasFrame:(BOOL)setting;

@end

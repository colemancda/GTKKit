#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKEntry.h>

@implementation GTKEntry

- (id)createWidget {
  self.widget = gtk_entry_new();
  buffer = gtk_entry_buffer_new(NULL, -1);
  gtk_entry_set_buffer (GTK_ENTRY (self.widget), buffer);
	return self;
}

- (id)stringValue {
  return [NSString stringWithUTF8String: gtk_entry_get_text (GTK_ENTRY (self.widget))];
}

- (void)setStringValue:(id)text {
  @autoreleasepool {
    const char *newStringValue = [text UTF8String];
    gtk_entry_set_text (GTK_ENTRY (self.widget), newStringValue);
  }
}

- (id)textVisible:(BOOL)visible {
  gtk_entry_set_visibility (GTK_ENTRY (self.widget), visible);
  return self;
}

- (BOOL)textVisible {
  return gtk_entry_get_visibility (GTK_ENTRY (self.widget));
}

- (id)maximumLength:(int)max {
  gtk_entry_set_max_length (GTK_ENTRY (self.widget), max);
  return self;
}

- (int)maximumLength {
  return gtk_entry_get_max_length (GTK_ENTRY (self.widget));
}

- (BOOL)hasFrame {
  return gtk_entry_get_has_frame (GTK_ENTRY (self.widget));
}

- (id)hasFrame:(BOOL)setting {
  gtk_entry_set_has_frame (GTK_ENTRY (self.widget), setting);
  return self;
}

@end

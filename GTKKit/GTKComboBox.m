#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKComboBox.h>

@implementation GTKComboBox

- (id)createWidget {
	widget = gtk_combo_box_text_new ();
	return self;
}

- (void)appendString:(OFString *)string withIdentifierString:(OFString *)id {
  gtk_combo_box_text_append (GTK_COMBO_BOX_TEXT(widget), [string UTF8String], [id UTF8String]);
}

- (void)prependString:(OFString *)string withIdentifierString:(OFString *)id {
  gtk_combo_box_text_prepend (GTK_COMBO_BOX_TEXT(widget), [string UTF8String], [id UTF8String]);
}

- (void)insertString:(OFString *)string withIdentifierString:(OFString *)id atPosition:(int)position {
  gtk_combo_box_text_insert (GTK_COMBO_BOX_TEXT(widget), position, [string UTF8String], [id UTF8String]);
}

@end
#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>
#import <GTKKit/GTKButton+Properties.h>

@implementation GTKButton (Properties)

- (void)setLabel:(OFString * OF_NULLABLE)label {
	gtk_button_set_label (GTK_BUTTON (self.widget), [label UTF8String]);
}

- (OFString * OF_NULLABLE)label {
	return [OFString stringWithUTF8String: gtk_button_get_label (GTK_BUTTON (self.widget))];
}

- (void)setReliefStyle:(GtkReliefStyle)relief {
	gtk_button_set_relief (GTK_BUTTON (self.widget), relief);
}

- (GtkReliefStyle)reliefStyle {
	return gtk_button_get_relief (GTK_BUTTON (self.widget));
}

@end

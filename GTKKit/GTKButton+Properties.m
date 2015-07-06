#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKButton.h>
#import <GTKKit/GTKButton+Properties.h>

@implementation GTKButton (Properties)

- (id OF_NONNULL)label:(OFString * OF_NULLABLE)label {
	gtk_button_set_label (GTK_BUTTON (self.widget), [label UTF8String]);
	return self;
}

- (OFString * OF_NULLABLE)label {
	return [NSString stringWithUTF8String: gtk_button_get_label (GTK_BUTTON (self.widget))];
}

- (id OF_NONNULL)reliefStyle:(GtkReliefStyle)relief {
	gtk_button_set_relief (GTK_BUTTON (self.widget), relief);
	return self;
}

- (GtkReliefStyle)reliefStyle {
	return gtk_button_get_relief (GTK_BUTTON (self.widget));
}

@end

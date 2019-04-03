
package Paws::SES::UpdateAccountSendingEnabled;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSendingEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::UpdateAccountSendingEnabled - Arguments for method UpdateAccountSendingEnabled on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSendingEnabled on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method UpdateAccountSendingEnabled.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSendingEnabled.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    $email->UpdateAccountSendingEnabled(
      Enabled => 1,    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateAccountSendingEnabled>

=head1 ATTRIBUTES


=head2 Enabled => Bool

Describes whether email sending is enabled or disabled for your Amazon
SES account in the current AWS Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSendingEnabled in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


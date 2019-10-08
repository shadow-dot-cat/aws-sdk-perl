
package Paws::EC2::ResetInstanceAttribute;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has Attribute => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ResetInstanceAttribute');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Attribute' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'InstanceId' => 'instanceId',
                       'Attribute' => 'attribute'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ResetInstanceAttribute - Arguments for method ResetInstanceAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetInstanceAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ResetInstanceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetInstanceAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->ResetInstanceAttribute(
      Attribute  => 'instanceType',
      InstanceId => 'MyString',
      DryRun     => 1,                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ResetInstanceAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attribute => Str

The attribute to reset.

You can only reset the following attributes: C<kernel> | C<ramdisk> |
C<sourceDestCheck>. To change an instance attribute, use
ModifyInstanceAttribute.

Valid values are: C<"instanceType">, C<"kernel">, C<"ramdisk">, C<"userData">, C<"disableApiTermination">, C<"instanceInitiatedShutdownBehavior">, C<"rootDeviceName">, C<"blockDeviceMapping">, C<"productCodes">, C<"sourceDestCheck">, C<"groupSet">, C<"ebsOptimized">, C<"sriovNetSupport">, C<"enaSupport">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetInstanceAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


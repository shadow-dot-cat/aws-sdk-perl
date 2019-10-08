
package Paws::EC2::PurchaseReservedInstancesOffering;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::EC2::Types qw/EC2_ReservedInstanceLimitPrice/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has InstanceCount => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has LimitPrice => (is => 'ro', isa => EC2_ReservedInstanceLimitPrice, predicate => 1);
  has ReservedInstancesOfferingId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PurchaseReservedInstancesOffering');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::PurchaseReservedInstancesOfferingResult');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ReservedInstancesOfferingId' => {
                                                  'type' => 'Str'
                                                },
               'LimitPrice' => {
                                 'class' => 'Paws::EC2::ReservedInstanceLimitPrice',
                                 'type' => 'EC2_ReservedInstanceLimitPrice'
                               },
               'InstanceCount' => {
                                    'type' => 'Int'
                                  }
             },
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'LimitPrice' => 'limitPrice'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseReservedInstancesOffering - Arguments for method PurchaseReservedInstancesOffering on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseReservedInstancesOffering on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method PurchaseReservedInstancesOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseReservedInstancesOffering.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $PurchaseReservedInstancesOfferingResult =
      $ec2->PurchaseReservedInstancesOffering(
      InstanceCount               => 1,
      ReservedInstancesOfferingId => 'MyString',
      DryRun                      => 1,            # OPTIONAL
      LimitPrice                  => {
        Amount       => 1,                         # OPTIONAL
        CurrencyCode => 'USD',                     # values: USD; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ReservedInstancesId =
      $PurchaseReservedInstancesOfferingResult->ReservedInstancesId;

    # Returns a L<Paws::EC2::PurchaseReservedInstancesOfferingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/PurchaseReservedInstancesOffering>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceCount => Int

The number of Reserved Instances to purchase.



=head2 LimitPrice => EC2_ReservedInstanceLimitPrice

Specified for Reserved Instance Marketplace offerings to limit the
total order and ensure that the Reserved Instances are not purchased at
unexpected prices.



=head2 B<REQUIRED> ReservedInstancesOfferingId => Str

The ID of the Reserved Instance offering to purchase.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseReservedInstancesOffering in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


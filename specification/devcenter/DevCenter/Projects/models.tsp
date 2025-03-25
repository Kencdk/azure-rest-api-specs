import "@typespec/rest";
import "@typespec/http";
import "@azure-tools/typespec-azure-core";
import "../shared/models.tsp";

using TypeSpec.Versioning;
using TypeSpec.Rest;

namespace DevCenterService;

@doc("A pending approval.")
@resource("approvals")
@parentResource(Project)
model Approval {
    @doc("The AAD object id of the user who created the approval request.")
    @added(APIVersions.v2025_04_01_preview)
    @visibility(Lifecycle.Read)
    createdByObjectId?: Azure.Core.uuid; 

    ...DevBox
}
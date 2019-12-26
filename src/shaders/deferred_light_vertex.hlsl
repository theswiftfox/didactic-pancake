// Fullscreen Quad VTX Shader

struct VS_OUT {
	float2 uv : UV;
};

VS_OUT main(uint id : SV_VertexId, out float4 vtxPos : SV_Position) {
	VS_OUT output;
	output.uv = float2((id << 1) & 2, id & 2) / 2.0;
	vtxPos = float4(output.uv.x * 2 - 1, -output.uv.y * 2 + 1, 0.0f, 1.0f);
	return output;
}
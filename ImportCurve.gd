tool
extends Path2D

export(bool) var IMPORT_CURVE = false setget import
export(String, "SELECT", "T") var IMPORT = "SELECT"

var t:Dictionary = {SELECT=[], T=[ 0, 0, 0, 0, -20, -12, -12.0353, 0.105112, 12.0353, -0.105112, 0, -2, 0, 0, 0, 0, 20, -12], ShapePoly=[-20, -10, -19.6321, -9.57462, -18.5601, -8.45228, -17.7749, -7.70184, -16.8314, -6.86365, -15.7356, -5.96657, -14.4935, -5.03942, -13.111, -4.11103, -11.594, -3.21025, -9.94842, -2.36591, -9.07928, -1.97392, -8.18023, -1.60684, -7.25201, -1.2683, -6.29536, -0.961884, -5.31102, -0.691205, -4.29974, -0.459866, -3.26226, -0.271472, -2.19931, -0.129627, -1.11164, -0.0379345, 0, 0, 1.11164, -0.0194385, 2.19931, -0.0949828, 3.26226, -0.222913, 4.29974, -0.399509, 5.31102, -0.621051, 6.29536, -0.883819, 7.25201, -1.18409, 8.18023, -1.51816, 9.07928, -1.88228, 9.94842, -2.27276, 11.594, -3.11787, 13.111, -4.02373, 14.4935, -4.96058, 15.7356, -5.89867, 16.8314, -6.80822, 17.7749, -7.65949, 18.5601, -8.42272, 19.6321, -9.566, 20, -10, 19.5504, -3.46706, 18.6883, 3.23363, 18.0104, 7.01511, 17.1345, 10.9212, 16.0356, 14.8297, 15.3948, 16.7467, 14.6888, 18.6186, 13.9146, 20.43, 13.0691, 22.1656, 12.149, 23.8103, 11.66, 24.5938, 11.1513, 25.3488, 10.6224, 26.0734, 10.0728, 26.7658, 9.50236, 27.4239, 8.91051, 28.046, 8.29692, 28.63, 7.66118, 29.1741, 7.00291, 29.6764, 6.32171, 30.135, 5.6172, 30.5479, 4.88899, 30.9132, 4.13668, 31.2291, 3.35988, 31.4937, 2.5582, 31.7049, 2, 32, 2, 36, -2, 36, -2, 32, -2.5582, 31.7587, -3.35988, 31.563, -4.13668, 31.3129, -4.88899, 31.0104, -5.6172, 30.6573, -6.32171, 30.2557, -7.00291, 29.8074, -7.66118, 29.3144, -8.29692, 28.7787, -8.91051, 28.2021, -9.50236, 27.5866, -10.0728, 26.9342, -10.6224, 26.2467, -11.1513, 25.5262, -11.66, 24.7745, -12.149, 23.9936, -13.0691, 22.3519, -13.9146, 20.6167, -14.6888, 18.8033, -15.3948, 16.9274, -16.0356, 15.0043, -17.1345, 11.0788, -18.0104, 7.15091, -18.6883, 3.34449, -19.5504, -3.40794], Design=[-11, 27, -8, 33, -5.5, 27, -5.5, 21.7623, -4, 22.1089, -4, 27, -6.5, 33.5, -6.5, 34, -3.5, 34, -3.5, 27.5, -1, 27, -1, 22.4776, -0.5, 22.4997, -0.5, 28.5, -1.5, 28.5, -0.5, 30.5, -0.5, 32, -2, 30.5, -2, 39, -0.5, 38, -0.5, 39.5, -1.5, 41, 0.5, 41, -0.5, 39.5, -0.5, 38, 1, 39, 1, 30.5, -0.5, 32, -0.5, 30.5, 0.5, 28.5, -0.5, 28.5, -0.5, 22.5071, 0, 22.4997, 0, 27, 2.5, 27.5, 2.5, 34, 3.5, 34, 3.5, 27, 5, 27, 7, 27.5, 9.5, 29, 9.5, 20.4441, 11, 19.7075, 11, 30.5, 11.5, 32, 11, 34, 8.5, 36, 11, 41, 14.7305, 41, 14.0898, 42.5, 9.5, 42.5, 7, 37, 5, 38.5, 5, 36.5, 10, 32.5, 10, 32, 9.5, 31, 8.5, 30, 6.5, 29, 5, 28.5, 5, 53.355, 3.5, 53.9356, 3.5, 35.5, 2.5, 35.5, 2.5, 42, 0, 42.5, 0, 58.5, -1, 58.5, -1, 42.5, -3.5, 42, -3.5, 35.5, -6.5, 35.5, -6.5, 36, -4, 41.5, -4, 53.8482, -5.5, 53.2148, -5.5, 42, -8, 36.5, -11, 42, -14.3877, 42, -14.9869, 40.5, -12, 40.5, -9.5, 36, -9.5, 35.5, -12.5, 35.5, -12.5, 34, -9.5, 34, -9.5, 33.5, -12, 28.5, -18.2136, 28.5, -18.4805, 27], Outline=[-18.5675, -10.4227, -17.7854, -9.65949, -16.8453, -8.80822, -15.7526, -7.89867, -14.5132, -6.96058, -13.1328, -6.02373, -11.6171, -5.11787, -9.97171, -4.27276, -9.10219, -3.88228, -8.2024, -3.51816, -7.27306, -3.18409, -6.31488, -2.88382, -5.32856, -2.62105, -4.31483, -2.39951, -3.2744, -2.22291, -2.20797, -2.09498, -1.11627, -2.01944, 0, -2, 1.11627, -2.03793, 2.20797, -2.12963, 3.2744, -2.27147, 4.31483, -2.45987, 5.32856, -2.69121, 6.31488, -2.96188, 7.27306, -3.2683, 8.2024, -3.60684, 9.10219, -3.97392, 9.97171, -4.36591, 11.6171, -5.21025, 13.1328, -6.11103, 14.5132, -7.03942, 15.7526, -7.96657, 16.8453, -8.86365, 17.7854, -9.70184, 18.5675, -10.4523]}

func importCurve():
	if Engine.editor_hint:
		if IMPORT != "SELECT":
			var Vectors:PoolVector2Array
			curve = Curve2D.new()
			var data = t[IMPORT]
			var shape = t["ShapePoly"]
			var design = t["Design"]
			var outline = t["Outline"]
			var i = 5
			while(i < data.size() - 1):
				i += 6
				curve.add_point(Vector2(data[i-1],data[i]), Vector2(data[i-5], data[i-4]), Vector2(data[i-3],data[i-2]))

			i = 1
			Vectors = PoolVector2Array([])
			while i < shape.size() - 1:
				Vectors.append(Vector2(shape[i-1], shape[i]))
				i += 2
			$"../Sprite/Shape".polygon = Vectors

			i = 1
			Vectors = PoolVector2Array([])
			while i < design.size() - 1:
				Vectors.append(Vector2(design[i-1], design[i]))
				i += 2
			$"../Sprite/Design".polygon = Vectors

			i = 1
			Vectors = PoolVector2Array([])
			while i < design.size() - 1:
				$"../Sprite/Outline".add_point(Vector2(outline[i-1], outline[i]))
				i += 2
			IMPORT_CURVE = false

func import(v):
	IMPORT_CURVE = v
	importCurve()
